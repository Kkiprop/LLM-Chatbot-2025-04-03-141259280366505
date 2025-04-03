import LLM "mo:llm";

persistent actor {
  
  // Function to send a prompt to the LLM model and return the result
  public func prompt(prompt : Text) : async Text {
    // Capture the response from the LLM prompt
    let response = await LLM.prompt(#Llama3_1_8B, prompt);
    
    // Return the response
    return response;
  };

  // Function to send a list of chat messages to the LLM model and return the response
  public func chat(messages : [LLM.ChatMessage]) : async Text {
    // Capture the response from the LLM chat
    let response = await LLM.chat(#Llama3_1_8B, messages);
    
    // Return the response
    return response;
  };
};
