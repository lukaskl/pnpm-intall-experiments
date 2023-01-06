
pnpm version: 7.9.3

```
Legend: production dependency, optional only, dev only

@workspace/react-app@0.0.0 /app/packages/react-app

dependencies:
react 16.14.0
react-dom 16.14.0
└── react 16.14.0 peer
react-router 5.2.0
├─┬ mini-create-react-context 0.4.1
│ └── react 16.14.0 peer
└── react 16.14.0 peer
react-router-dom 5.2.0
├── react 16.14.0 peer
└─┬ react-router 5.2.0
  ├─┬ mini-create-react-context 0.4.1
  │ └── react 16.14.0 peer
  └── react 16.14.0 peer

@workspace/routes@0.0.0 /app/packages/routes

dependencies:
react 16.14.0

devDependencies:
react-router-dom 5.2.0
├── react 16.14.0 peer
└─┬ react-router 5.2.0
  ├─┬ mini-create-react-context 0.4.1
  │ └── react 16.14.0 peer
  └── react 16.14.0 peer
```

```
from @workspace/react-app: react@16.14.0
from @workspace/react-app: react-dom@16.14.0

from @workspace/routes: react@16.14.0
from @workspace/routes: react-dom@null

from react-router-dom: react@16.14.0
from react-router-dom: react-dom@16.14.0

```
```json
{
  "description": "",
  "name": "@workspace/routes",
  "devDependencies": {
    "react-router-dom": "5.2.0"
  },
  "dependencies":{
    "react": "16.14.0"
  },
  "private": true,
  "version": "0.0.0"
}
```
