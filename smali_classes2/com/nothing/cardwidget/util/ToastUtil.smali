.class public final Lcom/nothing/cardwidget/util/ToastUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/nothing/cardwidget/util/ToastUtil;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/cardwidget/util/ToastUtil;

    invoke-direct {v0}, Lcom/nothing/cardwidget/util/ToastUtil;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/util/ToastUtil;->INSTANCE:Lcom/nothing/cardwidget/util/ToastUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "text"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/nothing/cardwidget/util/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    :goto_1
    sput-object p0, Lcom/nothing/cardwidget/util/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
