#! /bin/bash

git_branch() {
		$(git branch &> /dev/null)

		# if return status of previous command is 0, then only proceed
		if [[ $? -eq 0 ]]
		then
				local git_branch=$(git branch | grep '*' | awk '{print $2}')
				echo -n $git_branch
		fi
}
