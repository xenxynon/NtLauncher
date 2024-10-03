.class public Lo3/d;
.super Lcom/android/launcher3/icons/IconProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lo3/d$a;


# instance fields
.field private final disabledMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/icons/IconProvider$ThemeData;",
            ">;"
        }
    .end annotation
.end field

.field private supportsIconTheme:Z

.field private themedIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/launcher3/icons/IconProvider$ThemeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo3/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo3/d$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lo3/d;->Companion:Lo3/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lo5/d0;->f()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo3/d;->disabledMap:Ljava/util/Map;

    sget-object p1, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p1}, Lo3/b$b;->a()Lo3/b;

    move-result-object p1

    invoke-virtual {p1}, Lo3/b;->x()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo3/d;->setIconThemeSupported(Z)V

    return-void
.end method

.method private final getThemedIconMap()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/icons/IconProvider$ThemeData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo3/d;->themedIconMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/icons/IconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :try_start_0
    sget-object v2, Ln5/l;->h:Ln5/l$a;

    sget v2, Lcom/android/launcher3/icons/R$xml;->nt_grayscale_icon_map:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    if-ne v4, v6, :cond_1

    :cond_2
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne v4, v7, :cond_3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_7

    :cond_3
    if-eq v4, v6, :cond_7

    if-eq v4, v5, :cond_4

    goto :goto_0

    :cond_4
    const-string v4, "icon"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "package"

    invoke-interface {v2, v8, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "drawable"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v7, v9}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_6

    const-string v8, "pkg"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_5

    move v8, v6

    goto :goto_1

    :cond_5
    move v8, v9

    :goto_1
    if-ne v8, v6, :cond_6

    move v9, v6

    :cond_6
    if-eqz v9, :cond_2

    new-instance v8, Lcom/android/launcher3/icons/IconProvider$ThemeData;

    invoke-direct {v8, v1, v7}, Lcom/android/launcher3/icons/IconProvider$ThemeData;-><init>(Landroid/content/res/Resources;I)V

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    sget-object v1, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v8}, Lw5/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v2, v1}, Lw5/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    sget-object v2, Ln5/l;->h:Ln5/l$a;

    invoke-static {v1}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "ThemedIconProvider"

    const-string v3, "Unable to parse icon map"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    iput-object v0, p0, Lo3/d;->themedIconMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public canUseLocalIconOverrides()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getSystemIconState()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/icons/IconProvider;->getSystemIconState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lo3/d;->supportsIconTheme:Z

    if-eqz p0, :cond_0

    const-string p0, ",with-theme"

    goto :goto_0

    :cond_0
    const-string p0, ",no-theme"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getThemeDataForPackage(Ljava/lang/String;)Lcom/android/launcher3/icons/IconProvider$ThemeData;
    .locals 0

    invoke-direct {p0}, Lo3/d;->getThemedIconMap()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/IconProvider$ThemeData;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final setIconThemeSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lo3/d;->supportsIconTheme:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo3/d;->canUseLocalIconOverrides()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo3/d;->disabledMap:Ljava/util/Map;

    :goto_0
    iput-object p1, p0, Lo3/d;->themedIconMap:Ljava/util/Map;

    return-void
.end method
