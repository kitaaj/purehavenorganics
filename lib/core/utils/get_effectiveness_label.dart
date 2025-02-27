 String getEffectivenessLabel(int effectiveness) {
    switch (effectiveness) {
      case 5:
        return 'Very Effective (5/5)';
      case 4:
        return 'Effective (4/5)';
      case 3:
        return 'Moderately Effective (3/5)';
      case 2:
        return 'Slightly Effective (2/5)';
      case 1:
        return 'Minimal Effect (1/5)';
      default:
        return 'Unknown Effectiveness';
    }
  }