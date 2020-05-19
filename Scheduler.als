/**
		The set of tasks, including the idle task.
*/
enum Task {IDLE, Java, Python, Ruby}

/**
		The (one and only) Scheduler.
*/
one sig Scheduler {
	onCPU :			one Task,	// the task using the CPU
	blocked :		set Task,	// the set of blocked tasks
	runnable :	set Task	// the set of runnable tasks
}

/**
		All tasks are either runnable or blocked, and
		no task is both runnable and blocked.
		(i.e., blocked and runnable partition task)
*/
fact Partitioning {
	Scheduler.(runnable + blocked) = Task
	no Scheduler.runnable & Scheduler.blocked
}

/**
		The IDLE task is always runnable.
		The IDLE task is on the cpu if and only if
		there are no other runnable tasks.
*/
fact IDLE_Task_Runnable {
	IDLE in Scheduler.runnable
}

/**
		The IDLE task is on the cpu if and only if
		there are no other runnable tasks.
*/
fact IDLE_Task_LastToRun {
	IDLE = Scheduler.onCPU <=> IDLE = Scheduler.runnable
}

/**
		The task on the CPU is a runnable task.
*/
fact onCPU_is_Runnable {
	Scheduler.onCPU in Scheduler.runnable
}


/**
		Test run to explore states
*/
run {
	some blocked
}
