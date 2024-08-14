# Robust Node.js Boilerplate

A robust Node.js boilerplate with TypeScript and ESM support, designed to kickstart your Node.js projects with best practices and essential tools.

## Features

- ✅ TypeScript configuration
- ✅ ESLint for code linting
- ✅ Prettier for code formatting
- ✅ Node.js built-in test runner for unit testing
- ✅ Node.js v22+ support
- ✅ Docker setup
  - ✅ Development Dockerfile
  - ✅ docker-compose.yml for local development
  - [ ] Production-ready Dockerfile
- [ ] [Taskfile](https://taskfile.dev/) for running scripts
- [ ] GitHub Actions for CI/CD
  - [ ] Run linters
  - [ ] Run tests
  - [ ] Build and push Docker image

## Getting Started

### Prerequisites

- Node.js (v22.0.0 or higher)
- pnpm (v9.7.0 or higher recommended)
- Docker and Docker Compose (for containerized development)

### Installation

1. Clone the repository:

```bash
git clone https://github.com/IgorWnek/nodejs-robust-boilerplate.git
cd nodejs-robust-boilerplate
```

2. Install dependencies:

```bash
pnpm install
```

### Running the Application

#### Locally

- Run the application: `pnpm run dev`
- Run the application in watch mode: `pnpm run dev:watch`
- Run the application in debug mode: `pnpm run dev:debug`

#### Using Docker

1. Build and start the Docker container:

```bash
docker-compose up --build
```

2. The application will be available at `http://localhost:3000`

### Scripts

- Run tests: `pnpm test`
- Lint code: `pnpm run lint`
- Format code: `pnpm run format`

## Project Structure

```text
nodejs-robust-boilerplate/
├── src/
│   ├─ index.ts
│   └── hello-world.ts
├── test/
│   └── hello-world.test.ts
├── .eslintrc.json
├── .gitignore
├── .prettierrc.json
├── package.json
├── tsconfig.json
├── README.md
└── LICENSE
```

## Configuration

### TypeScript

TypeScript is configured in the `tsconfig.json` file. Key settings include:

```json:tsconfig.json
{
  "compilerOptions": {
    "target": "ES2022",
    "module": "ESNext",
    "moduleResolution": "node",
    "esModuleInterop": true,
    "strict": true,
    "skipLibCheck": true,
    "forceConsistentCasingInFileNames": true,
    "outDir": "./dist",
    "rootDir": "./src",
    "sourceMap": true,
    "resolveJsonModule": true,
    "lib": ["ES2022"]
  },
  "include": ["src/**/*"],
  "exclude": ["node_modules", "dist", "test", "**/*.test.ts"]
}
```

This configuration:

- Sets the target to `ES2022`, allowing the use of modern JavaScript features
- Uses `ESNext` module system for better compatibility with ESM
- Enables `strict` mode for stronger type checking
- Generates source maps for easier debugging
- Outputs compiled files to the `./dist` directory
- Specifies `./src` as the root directory for source files
- Includes all files in the `src` directory
- Excludes `node_modules`, `dist`, `test`, and test files from compilation

These settings ensure a modern, strict TypeScript setup optimized for Node.js development with ESM support.

### ESLint

ESLint is configured in the `.eslintrc.json` file. It uses TypeScript-specific rules and integrates with Prettier:

```json:.eslintrc.json
{
  "parser": "@typescript-eslint/parser",
  "extends": [
    "eslint:recommended",
    "plugin:@typescript-eslint/recommended",
    "plugin:prettier/recommended"
  ],
  "plugins": ["@typescript-eslint"],
  "env": {
    "node": true,
    "es6": true
  },
  "parserOptions": {
    "ecmaVersion": 2022,
    "sourceType": "module"
  },
  "rules": {}
}
```

This configuration:

- Uses the TypeScript parser
- Extends recommended ESLint and TypeScript-specific rules
- Integrates Prettier for consistent code formatting
- Sets up the environment for Node.js and ES6+
- Configures the parser to use ECMAScript 2022 features and module syntax

### Prettier

Prettier is configured in the `.prettierrc.json` file:

```json:.prettierrc.json
{
  "semi": true,
  "trailingComma": "all",
  "singleQuote": true,
  "printWidth": 100,
  "tabWidth": 2
}
```

This configuration:

- Ensures semicolons are always used
- Adds trailing commas to arrays and objects
- Uses single quotes for strings
- Sets the print width to 100 characters
- Sets the tab width to 2 spaces

## Testing

This project uses Node.js built-in test runner. Test files are located in the `test/` directory and use the `.test.ts` extension.

Example test file:

```typescript:test/hello-world.test.ts
import { helloWorld } from '../src/hello-world';

describe('helloWorld', () => {
  it('should return a greeting', () => {
    const result = helloWorld('Alice');
    expect(result).toBe('Hello, Alice!');
  });
});
```

## Contributing

Contributions are welcome! To ensure your Pull Request (PR) has the best chance of being accepted, please follow these guidelines:

1. **Fork the repository** and create your branch from `main`.

2. **Follow the coding style** of the project. Run `pnpm run lint` and `pnpm run format` before committing.

3. **Add tests** for any new functionality or fix any failing tests.

4. **Update documentation** if you're changing any user-facing functionality.

5. **Write clear, concise commit messages** that follow the [Conventional Commits](https://www.conventionalcommits.org/) specification.

6. **Keep your PR small and focused**. If you have multiple unrelated changes, consider submitting separate PRs.

7. **Describe your changes** in the PR description. Explain the rationale and provide context if necessary.

8. **Be responsive to feedback**. Address any comments or requested changes promptly.

9. **Ensure CI passes**. All tests, linting, and other checks should pass before the PR can be merged.

10. **Sign your commits** to verify the commit author. For more information, see [GitHub's guide on signing commits](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits).

Before starting work on a significant change, it's a good idea to open an issue to discuss it with the maintainers.

Thank you for contributing to make this project better!

## License

This project is licensed under the [MIT License](LICENSE) - see the [LICENSE](LICENSE) file for details.
