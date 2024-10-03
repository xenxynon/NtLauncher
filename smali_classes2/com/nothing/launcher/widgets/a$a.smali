.class public final Lcom/nothing/launcher/widgets/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/widgets/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/widgets/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg4/a;Landroid/content/Context;)Lcom/nothing/launcher/widgets/a;
    .locals 2

    const-string p0, "cardWidgetItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/nothing/launcher/widgets/a;

    invoke-virtual {p1}, Lg4/a;->a()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->m()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/nothing/launcher/widgets/a;-><init>(ZI)V

    invoke-virtual {p1}, Lg4/a;->a()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nothing/launcher/widgets/a;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Lg4/a;->a()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/launcher/widgets/a;->g(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/a;->b()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lg4/a;->a()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nothing/launcher/widgets/a;->b()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->p0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/nothing/launcher/widgets/a;->f(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object p0
.end method
