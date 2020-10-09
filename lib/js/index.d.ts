export declare class ApiError {
	message: string;
	url: string;
	constructor(data?: Record<string, string>);
}

export declare class CommitMeta {
	sha: string;
	url: string;
	constructor(data?: Record<string, string>);
}

export declare namespace hook {
	// TODO
}

export declare namespace issue {
	export class StopWatch {
		created?: Date;
		issueIndex: number;
		constructor(data?: Record<string, unknown>);
	}
}

export declare namespace misc {
	export interface MarkdownOption {
		Context: string;
		Mode: string;
		Text: string;
		Wiki: boolean;
	}

	export class ServerVersion {
		version: string;
		constructor(data?: Record<string, string>);
	}
}

export declare namespace organization {
	export class Organization {
		avatarUrl: string;
		description: string;
		fullName: string;
		id: number;
		location: string;
		repoAdminCanChangeTeamAccess: boolean;
		username: string;
		visibility: string;
		website: string;
		constructor(data?: Record<string, unknown>);
	}

	export class Team {
		canCreateOrgRepo: boolean;
		description: string;
		id: number;
		includesAllRepositories: boolean;
		name: string;
		organization?: Organization;
		permission: string;
		units: string[];
		constructor(data?: Record<string, unknown>);
	}
}

export declare namespace repository {
	export class ExternalTracker {
		format: string;
		style: string;
		url: string;
		constructor(data?: Record<string, string>);
	}

	export class ExternalWiki {
		url: string;
		constructor(data?: Record<string, string>);
	}

	export class InternalTracker {
		allowOnlyContributorsToTrackTime: boolean;
		enableIssueDependencies: boolean;
		enableTimeTracker: boolean;
		constructor(data?: Record<string, boolean>);
	}

	export class Permission {
		admin: boolean;
		pull: boolean;
		push: boolean;
		constructor(data?: Record<string, boolean>);
	}

	// TODO
}

export declare namespace user {
	export class User {
		avatarUrl: string;
		created?: Date;
		email: string;
		fullName: string;
		id: number;
		isAdmin: boolean;
		language: string;
		lastLogin?: Date;
		login: string;
		constructor(data?: Record<string, unknown>);
	}

	export class UserHeatmapData {
		contributions: number;
		timestamp: Date;
		constructor(data?: Record<string, number>);
	}
}
