# Node, NPM, and NVM CLI

## Version Check

```bash
nvm --version && node -v && npm -v
```

## NVM

```bash
nvm ls                                   # List installed versions
nvm ls-remote                            # List available remote versions (macOS/Linux)
nvm version-remote                       # Latest remote version
nvm install <version>                    # e.g., nvm install 22.11.0 (or --lts)
nvm uninstall <version>
nvm alias default <version>              # Set default Node version
nvm run node --version
nvm cache clear
```

## NPM

```bash
npm install -g npm@latest                # Update npm globally
npm ls                                   # List local project dependencies
npm ls -g --depth=0                      # List global packages cleanly
npm cache verify
npm cache clean --force                  # Only use if cache is corrupted
```

### Project Versioning

```bash
npm version patch   # 0.1.0 -> 0.1.1 (bug fixes)
npm version minor   # 0.1.0 -> 0.2.0 (new features)
npm version major   # 0.1.0 -> 1.0.0 (breaking changes)
```

## Build, Preview & Cleanup

```bash
npm run build
npx serve -s build                       # Preview production build locally
npx npkill                               # Find and delete old node_modules folders
```

## Netlify CLI

```bash
netlify login
netlify status
netlify deploy                           # Deploy draft preview URL
netlify deploy --prod                    # Deploy to production
```

## Quick File Inspection

```bash
cat package.json
```
