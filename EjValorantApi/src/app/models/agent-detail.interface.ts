export interface AgentDetailResponse {
    status: number;
    data: AgentDetail;
}

export interface AgentDetail {
    uuid: string;
    displayName: string;
    description: string;
    developerName: string;
    characterTags: null;
    displayIcon: string;
    displayIconSmall: string;
    bustPortrait: string;
    fullPortrait: string;
    fullPortraitV2: string;
    killfeedPortrait: string;
    background: string;
    backgroundGradientColors: string[];
    assetPath: string;
    isFullPortraitRightFacing: boolean;
    isPlayableCharacter: boolean;
    isAvailableForTest: boolean;
    isBaseContent: boolean;
    role: Role;
    recruitmentData: null;
    abilities: Ability[];
    voiceLine: null;
}

export interface Ability {
    slot: string;
    displayName: string;
    description: string;
    displayIcon: string;
}

export interface Role {
    uuid: string;
    displayName: string;
    description: string;
    displayIcon: string;
    assetPath: string;
}
