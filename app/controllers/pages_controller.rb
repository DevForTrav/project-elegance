class PagesController < ApplicationController

  def kwh
    @forms = {
      boat: {
        description: "Add Boats to the database.",
        path: "new_boat_path",
        turbo_frame_id: "new_boat_form"
      },
      wiring_harness: {
        description: "Add Wiring Harnesses to the database.",
        path: "new_wiring_harness_path",
        turbo_frame_id: "new_wiring_harness_form"
      },
      boat_wiring_harness: {
        description: "Add a Wiring Harness to a Boat",
        path: "new_boat_wiring_harness_path",
        turbo_frame_id: "new_boat_wiring_harness_form"
      },
      connector: {
        description: "Add Connectors to the database.",
        path: "new_connector_path",
        turbo_frame_id: "new_connector_form"
      },
      wiring_harness_connector: {
        description: "Add a connector to a wiring harness.",
        path: "new_wiring_harness_connector_path",
        turbo_frame_id: "new_wiring_harness_connector_form"
      },
      terminal: {
        description: "Add terminals to the database.",
        path: "new_terminal_path",
        turbo_frame_id: "new_terminal_form"
      },
      component: {
        description: "Add components to the database.",
        path: "new_component_path",
        turbo_frame_id: "new_component_form"
      },  
      circuit: {
        description: "Add circuits to the database.",
        path: "new_circuit_path",
        turbo_frame_id: "new_circuit_form"
      },
      splice: {
        description: "Add splices to the database.",
        path: "new_splice_path",
        turbo_frame_id: "new_splice_form"
      }
    }
  end
end
