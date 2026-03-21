# ============================================================
# Gruvbox theme for Tide (fish shell prompt)
# Save to: ~/.config/fish/conf.d/tide_gruvbox.fish
#
# Gruvbox palette used:
#   bg0    #282828   bg1    #3c3836   bg2    #504945
#   fg0    #fbf1c7   fg1    #ebdbb2   fg4    #a89984
#   red    #cc241d   bright_red    #fb4934
#   green  #98971a   bright_green  #b8bb26
#   yellow #d79921   bright_yellow #fabd2f
#   blue   #458588   bright_blue   #83a598
#   purple #b16286   bright_purple #d3869b
#   aqua   #689d6a   bright_aqua   #8ec07c
#   orange #d65d0e   bright_orange #fe8019
# ============================================================

# ------------------------------------------------------------------
# OS / context item
# ------------------------------------------------------------------
set -U tide_os_color fabd2f # bright yellow

# ------------------------------------------------------------------
# Directory (pwd)
# ------------------------------------------------------------------
set -U tide_pwd_color_anchors 83a598 # bright blue   — highlighted dirs
set -U tide_pwd_color_dirs a89984 # fg4 grey      — intermediate dirs
set -U tide_pwd_color_truncated_dirs 665c54 # bg3 muted     — truncated portion

# ------------------------------------------------------------------
# Git
# ------------------------------------------------------------------
set -U tide_git_color_branch b8bb26 # bright green  — clean branch
set -U tide_git_color_operation fe8019 # bright orange — rebase / merge in progress
set -U tide_git_color_upstream 83a598 # bright blue   — remote tracking info
set -U tide_git_color_stash d3869b # bright purple — stash indicator
set -U tide_git_color_conflicted fb4934 # bright red    — conflicts
set -U tide_git_color_staged fabd2f # bright yellow — staged changes
set -U tide_git_color_dirty fe8019 # bright orange — unstaged changes
set -U tide_git_color_untracked 8ec07c # bright aqua   — untracked files

# ------------------------------------------------------------------
# Command duration
# ------------------------------------------------------------------
set -U tide_cmd_duration_color d79921 # yellow

# ------------------------------------------------------------------
# Status (exit code)
# ------------------------------------------------------------------
set -U tide_status_color b8bb26 # bright green  — success
set -U tide_status_color_failure fb4934 # bright red    — failure

# ------------------------------------------------------------------
# Node / Python / Ruby / Go / Rust / Java / PHP version items
# ------------------------------------------------------------------
set -U tide_node_color 8ec07c # bright aqua
set -U tide_python_color fabd2f # bright yellow
set -U tide_ruby_color fb4934 # bright red
set -U tide_go_color 83a598 # bright blue
set -U tide_rust_color fe8019 # bright orange
set -U tide_java_color fe8019 # bright orange
set -U tide_php_color d3869b # bright purple

# ------------------------------------------------------------------
# Kubernetes / AWS / Terraform / Pulumi
# ------------------------------------------------------------------
set -U tide_kubectl_color 83a598 # bright blue
set -U tide_aws_color fe8019 # bright orange
set -U tide_terraform_color d3869b # bright purple
set -U tide_pulumi_color d3869b # bright purple

# ------------------------------------------------------------------
# Jobs (background processes)
# ------------------------------------------------------------------
set -U tide_jobs_color d79921 # yellow

# ------------------------------------------------------------------
# Time
# ------------------------------------------------------------------
set -U tide_time_color a89984 # fg4 grey

# ------------------------------------------------------------------
# Vi mode indicator
# ------------------------------------------------------------------
set -U tide_vi_mode_color_default a89984 # fg4 grey    — insert
set -U tide_vi_mode_color_normal fabd2f # bright yellow — normal
set -U tide_vi_mode_color_replace fb4934 # bright red    — replace
set -U tide_vi_mode_color_visual 8ec07c # bright aqua   — visual

# ------------------------------------------------------------------
# Prompt separators / characters (match terminal bg for "powerline" look)
# Use your terminal's background color here if you want seamless arrows.
# The values below assume a dark #282828 background.
# ------------------------------------------------------------------
set -U tide_left_prompt_frame_color 3c3836 # bg1
set -U tide_right_prompt_frame_color 3c3836 # bg1

# ------------------------------------------------------------------
# fish syntax highlighting (applies to the command line itself)
# Run this block once — it writes to fish_color_* universal variables.
# ------------------------------------------------------------------
set -U fish_color_normal ebdbb2 # fg1
set -U fish_color_command b8bb26 # bright green
set -U fish_color_keyword fb4934 # bright red
set -U fish_color_quote 8ec07c # bright aqua
set -U fish_color_redirection 83a598 # bright blue
set -U fish_color_end fabd2f # bright yellow (semicolons, pipes)
set -U fish_color_error fb4934 # bright red
set -U fish_color_param ebdbb2 # fg1
set -U fish_color_comment 928374 # grey
set -U fish_color_operator fe8019 # bright orange
set -U fish_color_escape d3869b # bright purple
set -U fish_color_autosuggestion 665c54 # bg3 (muted)
set -U fish_color_selection --background=504945 # bg2 visual select
set -U fish_color_search_match --background=504945
set -U fish_color_valid_path --underline
set -U fish_pager_color_prefix fabd2f # bright yellow — pager match highlight
set -U fish_pager_color_completion ebdbb2 # fg1
set -U fish_pager_color_description 928374 # grey
set -U fish_pager_color_progress a89984 # fg4
