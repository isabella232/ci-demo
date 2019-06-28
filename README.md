# Skeema.io CI demo

This repo contains several sample database schemas, for use in demonstrating the [Skeema.io CI service](https://www.skeema.io/ci).

To get an idea of the pull request schema change workflow, first browse the [example pull requests](https://github.com/skeema/ci-demo/pulls). On each pull request, you can see the automated CI comments on the Conversation tab, and linter annotations on the Checks tab. The Files Changed tab also shows the linter annotations inline, simplifying the code review process.

## Interactive demo 1

Since the CI application is already enabled here on https://github.com/skeema/ci-demo, you can simply submit a pull request to the upstream repo and see the CI system in action!

1. Fork this repo to your own account.
2. Edit or add any file; commit; push to GitHub
3. Submit a pull request back upstream to https://github.com/skeema/ci-demo

The CI system will run on your pull request, and leave a bot comment within a few minutes -- sometimes as fast as 10 seconds.

## Interactive demo 2

Here you can play with the CI system in your own account. Let's take the fork created in the previous demo, and enable the CI system on your fork directly.

1. (Optional) Make your repo from the previous demo *private*. In most cases, schema repos tend to be closed-source. The CI system will still be able to operate on your repo, if enabled directly on your fork.
2. Visit the [Skeema.io CI application on GitHub](https://github.com/apps/skeema-io) and click the green Install button.
3. In the `Select repositories` drop-down, select your fork of ci-demo.
4. In your fork of ci-demo, create a new branch, and make one or more commits. Push these commits to GitHub.
5. In the Commits page of your repo -- e.g. https://github.com/YOURNAME/ci-demo/commits/YOURBRANCH -- click any of the green checks or red X's to see the CI status of individual commits.
6. Submit a pull request from your new branch into master *of your fork* (rather than to the skeema/ci-demo upstream). The CI system will run on your pull request.


## Credits, licenses, and copyrights

These sample schemas were adapted from other sources with permissive licenses. In each subdirectory, please refer to README.md, LICENSE, and COPYRIGHT for more information.