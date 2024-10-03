.class public final Lcom/nothing/launcher/widgets/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/widgets/a$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/nothing/launcher/widgets/a$a;


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/widgets/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/widgets/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/widgets/a;->f:Lcom/nothing/launcher/widgets/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/nothing/launcher/widgets/a;-><init>(ZIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/nothing/launcher/widgets/a;->a:Z

    iput p2, p0, Lcom/nothing/launcher/widgets/a;->b:I

    const-string p1, ""

    iput-object p1, p0, Lcom/nothing/launcher/widgets/a;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/widgets/a;-><init>(ZI)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/widgets/a;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/widgets/a;->d:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/widgets/a;->b:I

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/widgets/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/launcher/widgets/a;->a:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lcom/nothing/launcher/widgets/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/nothing/launcher/widgets/a;

    iget-boolean v2, p0, Lcom/nothing/launcher/widgets/a;->a:Z

    iget-boolean v3, p1, Lcom/nothing/launcher/widgets/a;->a:Z

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/nothing/launcher/widgets/a;->b:I

    iget p1, p1, Lcom/nothing/launcher/widgets/a;->b:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/widgets/a;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/launcher/widgets/a;->d:I

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/widgets/a;->c:Ljava/lang/String;

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/launcher/widgets/a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/nothing/launcher/widgets/a;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCard#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nothing/launcher/widgets/a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nothing/launcher/widgets/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",groupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nothing/launcher/widgets/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",groupIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/launcher/widgets/a;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
