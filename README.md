# Skeema.io CI demo

This repo contains several sample database schemas, for use in demonstrating the [Skeema.io CI service](https://www.skeema.io/ci).

To get an idea of the pull request schema change workflow, first browse the [example pull requests](https://github.com/skeema/ci-demo/pulls?utf8=%E2%9C%93&q=is%3Apr+is%3Aopen+sort%3Acreated-asc+author%3Aevanelias). On each pull request, you can see the automated CI comments on the Conversation tab, and linter annotations on the Checks tab. The Files Changed tab also shows the linter annotations inline, simplifying the code review process.

## Interactive demo 1

Since the CI application is already enabled here on https://github.com/skeema/ci-demo, you can simply submit a pull request to the upstream repo and see the CI system in action!

1. Fork this repo to your own account.
2. Edit or add any file; commit; push to GitHub
3. Submit a pull request back upstream to https://github.com/skeema/ci-demo

The CI system will run on your pull request, and leave a bot comment within a few minutes -- sometimes as fast as 10 seconds.

## Interactive demo 2

Here you can play with the CI system in your own account, optionally with a private repository.

1. Create a new private GitHub repo, copy the files from the ci-demo fork (or any other dir tree created by `skeema init`) into it, commit, and push to GitHub. Alternatively, just use your ci-demo fork directly, although in this case you cannot make it private.
2. Visit the [Skeema.io CI application on GitHub](https://github.com/apps/skeema-io) and click the green Install button.
3. In the `Select repositories` drop-down, select your repo from step 1.
4. In your repo, create a new branch, and make one or more commits that affect the CREATE statements in *.sql files. Push these commits to GitHub.
5. In the Commits page of your repo -- e.g. https://github.com/YOURNAME/ci-demo/commits/YOURBRANCH -- click any of the green checks or red X's to see the CI status of individual commits.
6. Submit a pull request from your new branch into master *of your repo/fork* (rather than to the skeema/ci-demo upstream). The CI system will run on your pull request and will leave a comment automatically.
7. Commit a change with an intentional SQL syntax error directly to the master branch, and push to GitHub. In addition to scanning pull requests, the CI system also scans direct-to-master commits, and will leave a commit comment if problems were found.

## Credits, licenses, and copyrights

These sample schemas were adapted from other sources with permissive licenses. In each subdirectory, please refer to README.md, LICENSE, and COPYRIGHT for more information.
