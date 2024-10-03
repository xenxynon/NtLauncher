.class public final Lcom/nothing/launcher/widget/f;
.super Lcom/android/launcher3/qsb/QsbWidgetHostView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/widget/f$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/nothing/launcher/widget/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/widget/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/widget/f$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/widget/f;->g:Lcom/nothing/launcher/widget/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;-><init>(Landroid/content/Context;)V

    sget-object p1, Ly2/c;->a:Ly2/c;

    invoke-virtual {p1}, Ly2/c;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected getErrorView()Landroid/view/View;
    .locals 2

    const-string v0, "NTQsbWidgetHostView"

    const-string v1, "getErrorView(): returning default view"

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/nothing/launcher/widget/f;->g:Lcom/nothing/launcher/widget/f$a;

    invoke-virtual {v0, p0}, Lcom/nothing/launcher/widget/f$a;->c(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected prepareView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    return-void
.end method

.method public useDynamicPadding()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
