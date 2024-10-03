.class public final Lz3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz3/d;

    invoke-direct {v0}, Lz3/d;-><init>()V

    sput-object v0, Lz3/d;->a:Lz3/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final h(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/b;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1060027

    goto :goto_0

    :cond_0
    const v0, 0x1060028

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f06035a

    goto :goto_0

    :cond_0
    const p0, 0x7f06005c

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final b(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f06035f

    goto :goto_0

    :cond_0
    const p0, 0x7f06005e

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final c(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060361

    goto :goto_0

    :cond_0
    const p0, 0x7f060360

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final d(Landroid/content/Context;Z)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->r()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const p0, 0x7f06031d

    goto :goto_0

    :cond_0
    const p0, 0x7f060061

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f06031f

    goto :goto_0

    :cond_2
    const p0, 0x7f06036e

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final e(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->r()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060062

    goto :goto_0

    :cond_0
    const p0, 0x7f060370

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final f(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f06036f

    goto :goto_0

    :cond_0
    const p0, 0x7f0600dc

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final g(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f06035d

    goto :goto_0

    :cond_0
    const p0, 0x7f06005d

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public final i(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060377

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final j()I
    .locals 0

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080387

    goto :goto_0

    :cond_0
    const p0, 0x7f080241

    :goto_0
    return p0
.end method

.method public final k(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->x()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060379

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x1010031

    invoke-static {p1, p0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final l()I
    .locals 0

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0801fb

    goto :goto_0

    :cond_0
    const p0, 0x7f08023e

    :goto_0
    return p0
.end method
