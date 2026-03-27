# Tokyo Night (Storm) — Fish shell + Tide prompt config
# Place this file at: ~/.config/fish/conf.d/tokyonight.fish
# Then run:  source ~/.config/fish/conf.d/tokyonight.fish
#
# Requirements:
#   - Fish shell >= 3.x
#   - Tide prompt  (fisher install IlanCosman/tide@v6)
#   - A Nerd Font patched monospace font

# ── Terminal colors ────────────────────────────────────────────────────────────
# These set fish's $fish_color_* variables, which drive syntax highlighting,
# the default prompt, and completions.

# Base
set -g fish_color_normal c0caf5 # foreground
set -g fish_color_command 7aa2f7 # commands
set -g fish_color_keyword bb9af7 # keywords (if, for, while…)
set -g fish_color_quote 9ece6a # string literals
set -g fish_color_redirection 7dcfff # > >> | redirects
set -g fish_color_end 7dcfff # ; and & statement terminators
set -g fish_color_error f7768e # errors / bad tokens
set -g fish_color_param c0caf5 # command arguments
set -g fish_color_comment 565f89 # # comments
set -g fish_color_selection --background=2e3155 # visual selection bg
set -g fish_color_search_match --background=2e3155 # search highlight
set -g fish_color_operator bb9af7 # operators (&& || …)
set -g fish_color_escape ff9e64 # escape sequences \n \t
set -g fish_color_autosuggestion 414868 # inline autosuggestion ghost text
set -g fish_color_cancel f7768e # Ctrl-C indicator

# Pager (tab completions)
set -g fish_pager_color_prefix 7dcfff # matched prefix in completions
set -g fish_pager_color_completion c0caf5 # completion text
set -g fish_pager_color_description 565f89 # completion description
set -g fish_pager_color_progress a9b1d6 # "and X more rows" text
set -g fish_pager_color_selected_background --background=2e3155

# ── Tide prompt ────────────────────────────────────────────────────────────────
# Tide stores its config in universal variables (set -U).
# Run this file once; changes persist across sessions.

# Left prompt items
set -U tide_left_prompt_items pwd git character

# Right prompt items
set -U tide_right_prompt_items status cmd_duration jobs node python rustc go java

# Prompt separators (powerline style — requires Nerd Font)
set -U tide_left_prompt_separator_diff_color \uE0B0
set -U tide_left_prompt_separator_same_color \uE0B1
set -U tide_right_prompt_separator_diff_color \uE0B2
set -U tide_right_prompt_separator_same_color \uE0B3

# ── Tide: pwd ─────────────────────────────────────────────────────────────────
set -U tide_pwd_color_anchors 7aa2f7 # ~/dev/project  (anchor dirs)
set -U tide_pwd_color_dirs a9b1d6 # intermediate dirs
set -U tide_pwd_color_truncated_dirs 565f89 # … truncated segments
set -U tide_pwd_bg_color 1e2030 # segment background
set -U tide_pwd_icon \uF07C # 

# ── Tide: git ─────────────────────────────────────────────────────────────────
set -U tide_git_color_branch 9ece6a # clean branch
set -U tide_git_color_staged e0af68 # staged changes
set -U tide_git_color_dirty f7768e # unstaged changes
set -U tide_git_color_untracked 7dcfff # untracked files
set -U tide_git_color_stash bb9af7 # stashed changes
set -U tide_git_color_operation ff9e64 # rebase / merge in progress
set -U tide_git_bg_color 1e2030
set -U tide_git_icon \uE0A0 # 
set -U tide_git_truncation_length 24

# ── Tide: character (prompt symbol) ──────────────────────────────────────────
set -U tide_character_icon \u276F # ❯
set -U tide_character_color_success 9ece6a # green when last cmd succeeded
set -U tide_character_color_failure f7768e # red on non-zero exit

# ── Tide: status (exit code) ─────────────────────────────────────────────────
set -U tide_status_color f7768e # non-zero exit
set -U tide_status_color_success 9ece6a
set -U tide_status_bg_color 1e2030
set -U tide_status_bg_color_failure 2a0e14 # dark red tint on failure

# ── Tide: cmd_duration ────────────────────────────────────────────────────────
set -U tide_cmd_duration_color e0af68 # yellow — lantern
set -U tide_cmd_duration_bg_color 1e2030
set -U tide_cmd_duration_threshold 2000 # show after 2 s
set -U tide_cmd_duration_icon \uF017 # 

# ── Tide: jobs ────────────────────────────────────────────────────────────────
set -U tide_jobs_color 7dcfff
set -U tide_jobs_bg_color 1e2030
set -U tide_jobs_icon \uF013 # 

# ── Tide: node ────────────────────────────────────────────────────────────────
set -U tide_node_color 9ece6a
set -U tide_node_bg_color 1e2030
set -U tide_node_icon \uE718 # 

# ── Tide: python ──────────────────────────────────────────────────────────────
set -U tide_python_color 7aa2f7
set -U tide_python_bg_color 1e2030
set -U tide_python_icon \uE606 # 

# ── Tide: rust ────────────────────────────────────────────────────────────────
set -U tide_rustc_color ff9e64
set -U tide_rustc_bg_color 1e2030
set -U tide_rustc_icon \uE7A8 # 

# ── Tide: go ──────────────────────────────────────────────────────────────────
set -U tide_go_color 7dcfff
set -U tide_go_bg_color 1e2030
set -U tide_go_icon \uE627 # 

# ── Tide: newline / prompt spacing ────────────────────────────────────────────
set -U tide_left_prompt_frame_enabled true
set -U tide_right_prompt_frame_enabled false
set -U tide_prompt_min_cols 40
