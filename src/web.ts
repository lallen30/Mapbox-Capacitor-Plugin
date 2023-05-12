import { WebPlugin } from '@capacitor/core';
import { MapboxCapacitorPluginPlugin } from './definitions';

export class MapboxCapacitorPluginWeb extends WebPlugin implements MapboxCapacitorPluginPlugin {
  constructor() {
    super();
  }

  async echo(options: { value: string }): Promise<{ value: string }> {
    return { value: options.value };
  }

  async showMapbox(): Promise<void> {
    console.log("web.ts");
  }
}

const MapboxCapacitorPlugin = new MapboxCapacitorPluginWeb();

export { MapboxCapacitorPlugin };
