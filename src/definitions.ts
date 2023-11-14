export interface CapacitorPluginTnkPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
