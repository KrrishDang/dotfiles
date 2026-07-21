#!/bin/bash

PROJECT_NAME=$(basename "$PWD")

tmux new-session -d -s "$PROJECT_NAME"

tmux rename-window -t "$PROJECT_NAME" "editor"
tmux send-keys -t "$PROJECT_NAME" "nvim ." C-m

# Backend
if [ -d "backend" ]; then
  tmux new-window -t "$PROJECT_NAME" -n "backend"
  tmux send-keys -t "$PROJECT_NAME:backend" "cd backend && pnpm dev" C-m
fi

# Frontend
if [ -d "frontend" ]; then
  tmux new-window -t "$PROJECT_NAME" -n "frontend"
  tmux send-keys -t "$PROJECT_NAME:frontend" "cd frontend && pnpm dev" C-m
fi

tmux attach -t "$PROJECT_NAME"
