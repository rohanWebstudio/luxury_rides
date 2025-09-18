import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentsPage
    extends
        StatelessWidget {
  const DocumentsPage({
    super.key,
  });

  Widget
  buildDocumentItem({
    required IconData
    icon,
    required Color
    color,
    required String
    title,
    String?
    subtitle,
    bool
        showArrow =
        true,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: color,
          ),
          title: Text(
            title,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle:
              subtitle !=
                  null
              ? Text(
                  subtitle,
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                )
              : null,
          trailing: showArrow
              ? const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 16,
                )
              : null,
        ),
      ],
    );
  }

  @override
  Widget
  build(
    BuildContext
    context,
  ) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Documents",
          style: GoogleFonts.inter(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(
            context,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          buildDocumentItem(
            icon: Icons.check_circle,
            color: Colors.green,
            title: "Profile photo",
          ),
          buildDocumentItem(
            icon: Icons.check_circle,
            color: Colors.green,
            title: "Citizenship",
          ),
          buildDocumentItem(
            icon: Icons.info,
            color: Colors.blue,
            title: "Driving license",
            subtitle: "Submitted, under review",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            child: Text(
              "Honda City - 7AB5630TT",
              style: GoogleFonts.inter(
                color: Colors.orange,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.error,
              color: Colors.red,
            ),
            title: Text(
              "Vehicle registration certificate",
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              "The document you submitted are invalid or incorrect, hence wasn’t approved. Please submit your valid documents.",
              style: GoogleFonts.inter(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 16,
            ),
          ),
          buildDocumentItem(
            icon: Icons.warning,
            color: Colors.amber,
            title: "Vehicle insurance",
            subtitle: "Update your vehicle insurance",
          ),
          buildDocumentItem(
            icon: Icons.info,
            color: Colors.blue,
            title: "Vehicle Details",
            subtitle: "Submitted, under review",
          ),
        ],
      ),
    );
  }
}
