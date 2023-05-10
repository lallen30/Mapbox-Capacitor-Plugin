export interface MapboxCapacitorPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  showHelloWorld(): Promise<void>;
}
