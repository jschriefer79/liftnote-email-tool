# Liftnote Email Tool for Claude Code

A slash command for [Claude Code](https://claude.ai/claude-code) that writes high-converting "liftnote" teaser emails — the short, curiosity-driven emails that get readers to click through to a long-form promotion.

Feed it a promotion. Get back a ready-to-send liftnote email with a killer subject line, curiosity hooks, and multiple CTAs — all modeled on real, proven liftnote examples.

---

## What It Does

When you type `/emails` in Claude Code and provide a promotion, the tool will:

1. **Read your full promotion** (Word doc, PDF, URL, or pasted text)
2. **Study real liftnote examples** from your Dropbox training library to match the rhythm, tone, and structure of proven winners
3. **Write a complete liftnote email** including:
   - **Subject line** — curiosity-driven, specific, under 60 characters
   - **Body** — short (50-200 words), one hook, one angle, bold CTAs, conversational tone
   - **Sign-off** — from a real person with name and title
   - **P.S.** — when it adds power (second hook or urgency reinforcement)

### The 7 liftnote angles:
1. **Big Promise** — bold, specific financial or life-changing claim
2. **Predictions** — past credibility + new prediction = urgency
3. **Secret / Hidden Information** — suppressed or insider info
4. **Story** — vivid narrative that hooks before the reader knows it's an ad
5. **Political / Current Events** — leverage trending emotional charge
6. **Deadline / Urgency** — time pressure, something is disappearing
7. **Credibility** — lead with track record and authority

---

## Requirements

- **Claude Code** installed and working ([get it here](https://claude.ai/claude-code))
- **Dropbox access** to the shared training examples folder synced at `~/Dropbox/AIVault/Liftnotes/`

> **Important:** The training examples are stored in a shared Dropbox folder, not in this repo. You must have the `AIVault/Liftnotes/` folder synced to your local Dropbox for the tool to study real examples before writing. Without them, the tool still works but produces significantly weaker output.

---

## Installation

### Step 1: Clone this repo

```bash
git clone https://github.com/jschriefer79/liftnote-email-tool.git
cd liftnote-email-tool
```

Or download as a ZIP and unzip it.

### Step 2: Run the installer

```bash
./install.sh
```

That's it. The installer will:
- Copy the `/emails` command into your Claude Code commands directory
- Verify your Dropbox training examples are accessible
- Save version info for future updates

---

## How to Use It

1. Open Claude Code (terminal, desktop app, or IDE extension)
2. Navigate to any project directory
3. Type:
   ```
   /emails
   ```
4. When prompted, provide your promotion in any of these formats:
   - A **file path** to a Word doc (`.docx`) or PDF on your computer
   - A **URL** to a live sales page or VSL transcript
   - **Pasted text** directly into the chat
5. Choose your angle (or let Claude recommend one)
6. Provide a few details (target reader, sign-off name/title)
7. Get a complete, ready-to-send liftnote email

---

## Updating to the Latest Version

When a new version is released:

```bash
cd liftnote-email-tool
./update.sh
```

This pulls the latest version from the repo and reinstalls automatically. Your existing Claude Code setup is preserved — only the `/emails` command file is updated.

To check your current version:
```bash
cat ~/.claude/.liftnote-email-tool/installed-version
```

---

## Uninstalling

```bash
cd liftnote-email-tool
./uninstall.sh
```

This removes the `/emails` command and version tracking data. Your Claude Code installation is not affected.

---

## About the Training Examples

This tool reads real, high-performing liftnote examples from a shared Dropbox folder at:

```
~/Dropbox/AIVault/Liftnotes/
```

These examples are **not included in this repo** — they live in Dropbox as the single source of truth. When new examples are added to the Dropbox folder, the tool automatically picks them up on the next run. No update needed.

The examples include liftnotes across all 7 angles (Big Promise, Predictions, Secret, Story, Political, Deadline/Urgency, Credibility) so Claude can match the style and energy of proven winners.

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0.0 | April 2026 | Initial release |

---

Built for direct response publishers, copywriters, and email marketing teams.
