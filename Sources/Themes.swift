import Ignite

protocol BaseTheme: Theme {}

extension BaseTheme {
	var siteWidth: ResponsiveValues { .init(small: .px(770)) }

	var codeBlockFontSize: LengthUnit { .px(16) }
    var inlineCodeFontSize: LengthUnit { .px(16) }

    var h1Size: ResponsiveValues { .init(LengthUnit.px(32)) }  // 1.78x
    var h2Size: ResponsiveValues { .init(LengthUnit.px(28)) }  // 1.56x
    var h3Size: ResponsiveValues { .init(LengthUnit.px(22)) }  // 1.22x
    var h4Size: ResponsiveValues { .init(LengthUnit.px(20)) }  // 1.11x
    var h5Size: ResponsiveValues { .init(LengthUnit.px(18)) }  // Same as body
    var h6Size: ResponsiveValues { .init(LengthUnit.px(16)) }  // 0.89x body

    var bodyFontSize: ResponsiveValues { .init(LengthUnit.px(18)) }
    var lineSpacing: LengthUnit { .em(1.5) }
    var headingLineSpacing: LengthUnit { .em(2) }

}

struct AdventDay: BaseTheme {

	var font: Font = Font(
        name: "Advent Sans",
        source: "./../fonts/AdventSans-Logo.otf"
    )

    var headingFont: Font = Font(
        name: "Advent Sans",
        source: "./../fonts/AdventSans-Logo.otf"
    )

    var monospaceFont: Font = Font(
        name: "Advent Sans",
        source: "./../fonts/AdventSans-Logo.otf"
     )

    var colorScheme: ColorScheme = .light

    var accent: Color { Color(hex: "#B67F21") } // yellow
    var secondaryAccent: Color { Color(hex: "#732127") } // light-red
    var secondary: Color { Color(hex: "#2E1B15") } // red
    var background: Color { Color(hex: "#F2DFDA") } //bright-white 
    var secondaryBackground: Color { Color(hex: "#CDC8B0") } // white
    var link: Color { Color(hex: "#3A4A67") } // blue
    var hoveredLink: Color { Color(hex: "#2B797A") } // light-aqua
}
