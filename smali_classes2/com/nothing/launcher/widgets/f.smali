.class public final Lcom/nothing/launcher/widgets/f;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nothing/launcher/widgets/NtWidgetsListFirstHeader;


# direct methods
.method public constructor <init>(Lcom/nothing/launcher/widgets/NtWidgetsListFirstHeader;)V
    .locals 1

    const-string v0, "ntWidgetsListFirstHeader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/nothing/launcher/widgets/f;->a:Lcom/nothing/launcher/widgets/NtWidgetsListFirstHeader;

    return-void
.end method


# virtual methods
.method public final a()Lcom/nothing/launcher/widgets/NtWidgetsListFirstHeader;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/widgets/f;->a:Lcom/nothing/launcher/widgets/NtWidgetsListFirstHeader;

    return-object p0
.end method
