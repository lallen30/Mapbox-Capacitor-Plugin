export interface MapboxCapacitorPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  showMapbox(): Promise<void>;
}
