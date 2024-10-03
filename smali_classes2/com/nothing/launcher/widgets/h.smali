.class public final Lcom/nothing/launcher/widgets/h;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nothing/launcher/widgets/NtWidgetsListHeader;


# direct methods
.method public constructor <init>(Lcom/nothing/launcher/widgets/NtWidgetsListHeader;)V
    .locals 1

    const-string v0, "ntWidgetsListHeader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/nothing/launcher/widgets/h;->a:Lcom/nothing/launcher/widgets/NtWidgetsListHeader;

    return-void
.end method


# virtual methods
.method public final a()Lcom/nothing/launcher/widgets/NtWidgetsListHeader;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/widgets/h;->a:Lcom/nothing/launcher/widgets/NtWidgetsListHeader;

    return-object p0
.end method
