#!/bin/sh
/bin/ollama serve &
sleep 5
ollama pull "$INFERENCE_TEXT_MODEL"
wait
