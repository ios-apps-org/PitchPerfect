# Application Lifecycle

## Not Running

- In the beginning, app is in this state

## Inactive

- As soon as app icon is tapped, moves into Inactive state
- Can do some setup
- But cannot yet receive events
- Almost immediately moves into Active state

## Active

- Fully running in foreground and receiving events
- Stays in this state while user is actively engaging with UI
- When device event happens (i.e. user switches to another app or phone call)
  - Transitions back to Inactive state
  - And to the Background state

## Background

- App is still running
- Can still execute select code
- But interface is not visible
- After a few seconds it goes into Suspended state

## Suspended

- App is still in memory
- But cannot execute any code
- When use comes back to app:
  - Goes back to Background state
  - Then to Inactive state
  - Back to being Active
- If iOS needs more memory:
  - Any suspended apps may be moved off memory entirely
  - And back to Not Running state
