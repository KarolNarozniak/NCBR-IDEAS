import openai
import json
import os

# Function to safely load the API key from a configuration file
def load_api_key(config_file="config.json"):
    """
    Loads the OpenAI API key from a configuration file.
    
    Parameters:
    config_file (str): Path to the configuration file containing the API key.

    Returns:
    str: The OpenAI API key.
    """
    try:
        with open(config_file, 'r') as file:
            config = json.load(file)
        return config["openai_api_key"]
    except (FileNotFoundError, KeyError, json.JSONDecodeError) as e:
        raise Exception(f"Error loading API key from {config_file}: {e}")

# Function to call OpenAI GPT-4 for translating invention descriptions
def translate_invention(scientific_description, config_file="config.json"):
    """
    Translates a scientific description of an invention into:
    - Business potential application benefits.
    - Investor-oriented language focused on ROI and financial value.
    
    Parameters:
    scientific_description (str): The scientific description of the invention.
    config_file (str): Path to the configuration file containing the API key.

    Returns:
    dict: Translations for business applications and investor language.
    """
    # Load the API key securely
    openai.api_key = load_api_key(config_file)
    
    # Prompt for GPT-4
    prompt = f"""
You are an expert consultant specializing in bridging the gap between cutting-edge scientific inventions, business applications, and investment potential. Your role is to act as a seasoned advisor with a deep understanding of science, technology commercialization, and financial markets. You communicate with the precision of a scientist, the strategic insight of a business development professional, and the persuasive tone of an investor pitch.

Your task is to analyze a given scientific description of an invention and provide two distinct outputs:

Business Applications: Explain the practical applications of the invention in industry. Use concise, clear language that highlights its value proposition, target markets, competitive advantages, and potential use cases. Avoid jargon; make it accessible to business stakeholders.
Investor Language: Translate the description into language that appeals to investors. Focus on financial metrics like ROI, cost savings, scalability, market demand, and revenue potential. Include metrics or plausible estimates if applicable.
The output format must be:

Business Applications:
Start with: "This invention enables..."
Include 2-3 concise bullet points summarizing industry relevance and benefits.
Investor Language:
Start with: "For investors, this technology presents..."
Include a short paragraph describing financial attractiveness and a bullet-point list of specific investor takeaways.
Example Input: A novel battery technology using silicon anodes increases energy density by 50%, reduces charging time by 70%, and extends battery lifespan by 200% compared to lithium-ion batteries.

Example Output: Business Applications:

This invention enables faster charging and longer-lasting batteries for electric vehicles (EVs), addressing a key consumer pain point.
It can be integrated into consumer electronics, enhancing device performance and lifespan.
Targets renewable energy storage systems, improving efficiency and reliability.
Investor Language:

For investors, this technology presents a transformative opportunity in the $100 billion global battery market, growing at 13% CAGR. Its potential for cost savings in EV manufacturing and enhanced consumer appeal could drive rapid adoption.
Key Takeaways:
Estimated ROI: 20-30% in 5 years based on licensing and sales.
High demand: EV and electronics markets are actively seeking better battery solutions.
Scalability: Suitable for mass production with existing infrastructure.
Always ensure your response is accurate, persuasive, and clear, catering to a non-technical audience.
    """
    
    try:
        # Make a call to GPT-4
        response = openai.ChatCompletion.create(
            model="gpt-4",
            messages=[
                {"role": "system", "content": "You are an expert in translating scientific inventions into business and investor-friendly language."},
                {"role": "user", "content": prompt}
            ],
            max_tokens=1000,
            temperature=0.7
        )
        
        # Extract response content
        reply = response['choices'][0]['message']['content']
        
        # Split into sections
        parts = reply.split("Business Applications:")
        business_applications = parts[1].split("Investor Language:")[0].strip()
        investor_language = parts[1].split("Investor Language:")[1].strip()
        
        return {
            "Business Applications": business_applications,
            "Investor Language": investor_language
        }
    
    except Exception as e:
        return {"error": str(e)}

# Example usage
scientific_description = """
A novel battery technology that uses silicon anodes to increase energy density by 50%, reduce charging times by 70%, 
and extend battery lifespan by 200% compared to traditional lithium-ion batteries.
"""

# Ensure the config file contains the API key in the following format:
# {
#   "openai_api_key": "your_openai_api_key"
# }

translation_result = translate_invention(scientific_description)

# Display the translations
import ace_tools as tools; tools.display_dataframe_to_user(name="Translation Result", dataframe=pd.DataFrame([translation_result]))
