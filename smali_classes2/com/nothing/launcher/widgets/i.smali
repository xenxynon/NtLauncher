.class public final synthetic Lcom/nothing/launcher/widgets/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/nothing/launcher/widgets/NtWidgetsListHeader;

.field public final synthetic h:Lcom/nothing/launcher/widgets/j;

.field public final synthetic i:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/widgets/NtWidgetsListHeader;Lcom/nothing/launcher/widgets/j;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/widgets/i;->g:Lcom/nothing/launcher/widgets/NtWidgetsListHeader;

    iput-object p2, p0, Lcom/nothing/launcher/widgets/i;->h:Lcom/nothing/launcher/widgets/j;

    iput-object p3, p0, Lcom/nothing/launcher/widgets/i;->i:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/widgets/i;->g:Lcom/nothing/launcher/widgets/NtWidgetsListHeader;

    iget-object v1, p0, Lcom/nothing/launcher/widgets/i;->h:Lcom/nothing/launcher/widgets/j;

    iget-object p0, p0, Lcom/nothing/launcher/widgets/i;->i:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-static {v0, v1, p0, p1}, Lcom/nothing/launcher/widgets/j;->a(Lcom/nothing/launcher/widgets/NtWidgetsListHeader;Lcom/nothing/launcher/widgets/j;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;Landroid/view/View;)V

    return-void
.end method
