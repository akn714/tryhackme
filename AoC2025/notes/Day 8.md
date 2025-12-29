

##### Agentic AI
- Plan multi-step plans to accomplish goals.
- Act on things (run tools, call APIs, copy files).
- Watch & adapt, adapting strategy when things fail or new knowledge is discovered.

##### Chain of Thought
- CoT (Chain of Thought) is a method in artificial intelligence where a model explains its reasoning step by step to conclude, helping improve accuracy and clarity in problem-solving .
- CoT is a prompt-engineering method designed to improve the reasoning capabilities of large language models (LLMs), especially for tasks that require complex, multi-step thinking.

##### Example Tool call in ReAct (Reason + Act) Loop

**Tool Defination**
```json
{
  "name": "web_search",
  "description": "Search the web for real-time information",
  "parameters": {
    "type": "object",
    "properties": {
      "query": {
        "type": "string",
        "description": "The search query"
      }
    },
    "required": [
      "query"
    ]
  }
}
```
**Tool Call**
```json
{  "name": "web_search",  "arguments": {    "query": "recent news on quantum computing"  }}
```
