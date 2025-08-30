# Multilingual AI Chatbot for Farmer Assistance

This project is a voice-enabled, multilingual AI chatbot designed to assist
farmers by providing real-time agricultural advice in multiple languages
including Hindi. It uses advanced speech-to-text models and AI language models
for interactive, voice-driven conversations.

---

## Features

- Multilingual voice input, transcription, and chatbot responses
- Supports Hindi and English with planned expansions for other regional
  languages
- Interactive chat interface optimized for farmer usability
- Uses OpenAI Whisper for speech-to-text transcription
- Integrates Ollama's Llama 3 AI model for question answering about crops and
  farming
- Responsive and accessible UI design with natural color schemes for ease of use
- Real-time text-to-speech output for auditory feedback

---

## Getting Started

### Prerequisites

- Node.js (v18 or later recommended)
- npm, yarn, or pnpm package manager
- Local Ollama server running with `llama3:latest` model installed

### Setup and Run

Clone the repo and install dependencies:

git clone <https://github.com/asiyaattar/India-Accelerator-OpenXAI-2025/tree/my-feature-branch/Multilingual_AiAssistant_Farmers/whisper> npm install

Run the development server:

npm run dev

Open your browser at [http://localhost:3000](http://localhost:3000) to interact
with the chatbot.

---

## How to Use

- Press the **Record** button and speak a farming-related query in Hindi or
  English.
- The chatbot transcribes your speech and generates a contextual response using
  the AI model.
- You can also type your query and get instant answers.
- Listen to the AI’s spoken answer or read text responses on screen.

---

## Future Roadmap

- Add support for more regional Indian languages
- Improve speech recognition accuracy with fine-tuned models
- Integrate weather forecasting and market price insights
- Mobile app version for offline use
