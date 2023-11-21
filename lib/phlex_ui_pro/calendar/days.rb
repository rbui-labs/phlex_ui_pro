# frozen_string_literal: true

module PhlexUI
    class Calendar::Days < Base
        BASE_CLASS = "inline-flex items-center justify-center rounded-md text-sm ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 h-8 w-8 p-0 font-normal aria-selected:opacity-100"

        def template
            render_selected_date_template
            render_today_date_template
            render_current_month_date_template
            render_other_month_date_template
        end

        private

        def render_selected_date_template
            date_template("selectedDateTemplate") do
                button(
                    data_day: "{{day}}",
                    data_action: " click->calendar#selectDay",
                    name: "day",
                    class:
                        tokens(
                            BASE_CLASS,
                            "bg-primary text-primary-text hover:bg-primary hover:text-primary-text focus:bg-primary focus:text-primary-text"
                        ),
                    role: "gridcell",
                    tabindex: "0",
                    type: "button",
                    aria_selected: "true"
                ) { "{{dayDate}}" }
            end
        end

        def render_today_date_template
            date_template("todayDateTemplate") do
                button(
                    data_day: "{{day}}",
                    data_action: " click->calendar#selectDay",
                    name: "day",
                    class:
                        tokens(
                            BASE_CLASS,
                            "bg-accent-background text-accent-text hover:bg-accent-background hover:text-accent-text focus:bg-accent-background focus:text-accent-text"
                        ),
                    role: "gridcell",
                    tabindex: "-1",
                    type: "button"
                ) { "{{dayDate}}" }
            end
        end

        def render_current_month_date_template
            date_template("currentMonthDateTemplate") do
                button(
                    data_day: "{{day}}",
                    data_action: " click->calendar#selectDay",
                    name: "day",
                    class:
                        tokens(
                            BASE_CLASS,
                            "bg-background text-text hover:bg-accent-background hover:text-accent-text focus:bg-accent-background focus:text-accent-text"
                        ),
                    role: "gridcell",
                    tabindex: "-1",
                    type: "button"
                ) { "{{dayDate}}" }
            end
        end

        def render_other_month_date_template
            date_template("otherMonthDateTemplate") do
                button(
                    data_day: "{{day}}",
                    data_action: " click->calendar#selectDay",
                    name: "day",
                    class:
                        tokens(
                            BASE_CLASS,
                            "bg-background text-muted-text hover:bg-accent-background hover:text-accent-text focus:bg-accent-background focus:text-accent-text"
                        ),
                    role: "gridcell",
                    tabindex: "-1",
                    type: "button"
                ) { "{{dayDate}}" }
            end
        end

        def date_template(target, &)
            template_tag(data: { calendar_target: target }) do
                td(
                    class:
                        "relative p-0 text-center text-sm focus-within:relative focus-within:z-20 [&:has([aria-selected])]:bg-accent-background [&:has([aria-selected])]:rounded-md",
                    role: "presentation",
                    &
                )
            end
        end

        def default_attrs
            {}
        end
    end
end