export interface BerriesListResponse {
    count: number;
    next: string;
    previous: null;
    results: Berrie[];
}

export interface Berrie {
    name: string;
    url: string;
}
