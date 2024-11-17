def find_best_pairs(email, data):
    """
    Finds the best business-investor pairs for a given academic profile based on their email.
    
    Parameters:
    email (str): The email of the academic to query.
    data (pd.DataFrame): The full dataset containing profiles.

    Returns:
    pd.DataFrame: Top 5 business-investor pairs.
    """
    # Query the academic profile
    academic_profile = data[(data['Email'] == email) & (data['Profile_Type'] == 'Academic')]
    
    if academic_profile.empty:
        return f"No academic profile found for email: {email}"
    
    # Extract relevant academic details
    academic_bio = academic_profile['Bio'].iloc[0]
    academic_keywords = academic_bio.split(", ")  # Split keywords in bio

    # Filter businesses and investors
    businesses = data[data['Profile_Type'] == 'Business']
    investors = data[data['Profile_Type'] == 'Investor']

    # Score businesses and investors based on relevance to academic bio
    businesses['Relevance'] = businesses['Bio'].apply(
        lambda x: sum(1 for keyword in academic_keywords if keyword in str(x))
    )
    investors['Relevance'] = investors['Bio'].apply(
        lambda x: sum(1 for keyword in academic_keywords if keyword in str(x))
    )

    # Rank businesses and investors by relevance
    top_businesses = businesses.sort_values(by='Relevance', ascending=False).head(5)
    top_investors = investors.sort_values(by='Relevance', ascending=False).head(5)

    # Pair the top businesses and investors
    top_pairs = []
    for i in range(min(5, len(top_businesses), len(top_investors))):
        top_pairs.append({
            'Business Name': top_businesses.iloc[i]['Name'],
            'Investor Name': top_investors.iloc[i]['Name'],
            'Business Relevance': top_businesses.iloc[i]['Relevance'],
            'Investor Relevance': top_investors.iloc[i]['Relevance']
        })
    
    # Convert to DataFrame for display
    return pd.DataFrame(top_pairs)

# Test the function with a sample academic email
academic_email = "agnieszka.szymański@edu.pl"
top_pairs_df = find_best_pairs(academic_email, data)

# Display the results
import ace_tools as tools; tools.display_dataframe_to_user(name="Top 5 Business-Investor Pairs", dataframe=top_pairs_df)
