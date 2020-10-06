export declare type Json = null | boolean | number | string | Json[] | {[property: string]: Json};

export declare class ApiError {
	message: string;
	url: string;
	constructor(message: string, url: string);
	static fromJson(map: Record<string, Json>): ApiError;
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
		readonly version: string;
		constructor(version: string);
		static fromJson(map: Record<string, Json>): ServerVersion;
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
		readonly id: number;
		isAdmin: boolean;
		language: string;
		lastLogin?: Date;
		login: string;
		constructor(id: number);
		static fromJson(map: Record<string, Json>): User;
	}

	export class UserHeatmapData {
		contributions: number;
		readonly timestamp: Date;
		constructor(timestamp: Date, contributions?: number);
		static fromJson(map: Record<string, Json>): UserHeatmapData;
	}
}
