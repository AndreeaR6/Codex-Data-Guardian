## Safety Rule

For this workspace, the default rule is: verify first, then touch. Before any action that can write, delete, send, publish, import, charge, expose credentials, or otherwise affect real external systems, first inspect the current state, run a dry-run or read-only check when possible, summarize the intended change, and require explicit confirmation for risky actions.

Never store API keys, passwords, tokens, or other credentials in source code, GitHub repositories, plugin manifests, docs, logs, or reusable approval rules. Use environment variables or a proper secret store instead.

For any external message or share action, including Gmail, Drive sharing, GitHub publishing, uploads, forwards, or notifications, always show the exact recipients or destination, subject/title when applicable, attachment/file list, and a short content summary, then ask for explicit confirmation before sending or sharing. Do not treat previously mentioned addresses as confirmed for a new send unless the user confirms them in the current action.
