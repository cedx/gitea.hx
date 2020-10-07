export declare class ApiError {
	message: string;
	url: string;
	constructor(data?: Record<string, string>);
}

export declare namespace hook {
	// TODO
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
	// TODO
}

export declare namespace repository {
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
