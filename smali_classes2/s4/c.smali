.class public final Ls4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayedIconEntity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lr4/a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ls4/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ls4/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lr4/a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Ls4/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lr4/a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls4/c;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lr4/a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ls4/c;->c()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ls4/c;->b()I

    move-result p1

    :goto_0
    iput p1, p0, Ls4/c;->e:I

    invoke-virtual {p2}, Lr4/a;->f()Z

    move-result p1

    iput-boolean p1, p0, Ls4/c;->f:Z

    return-void
.end method

.method private final a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 2

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ls4/c;->a:Landroid/content/Context;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Ls4/c;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "context.resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToDrawable: Cast exception, please check your "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final b()I
    .locals 1

    iget-object p0, p0, Ls4/c;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0704da

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private final c()I
    .locals 1

    iget-object p0, p0, Ls4/c;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07024c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Ls4/c;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ls4/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Ls4/c;->b:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Ls4/c;->e:I

    return p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Ls4/c;->f:Z

    return p0
.end method
