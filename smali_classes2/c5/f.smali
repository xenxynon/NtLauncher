.class public final Lc5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/f$a;
    }
.end annotation


# static fields
.field public static final i:Lc5/f$a;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Lc5/q;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc5/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc5/f$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lc5/f;->i:Lc5/f$a;

    return-void
.end method

.method public constructor <init>(IZLc5/q;)V
    .locals 2

    const-string v0, "style"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc5/f;->a:I

    iput-boolean p2, p0, Lc5/f;->b:Z

    iput-object p3, p0, Lc5/f;->c:Lc5/q;

    invoke-static {p1}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object p2

    const v0, -0xe4910d

    if-nez p1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    sget-object v1, Lc5/q;->n:Lc5/q;

    if-eq p3, v1, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result p2

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object p1

    invoke-virtual {p3}, Lc5/q;->b()Lc5/g;

    move-result-object p2

    invoke-virtual {p2}, Lc5/g;->a()Lc5/r;

    move-result-object p2

    const-string v0, "camSeed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lc5/r;->a(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc5/f;->d:Ljava/util/List;

    invoke-virtual {p3}, Lc5/q;->b()Lc5/g;

    move-result-object p2

    invoke-virtual {p2}, Lc5/g;->b()Lc5/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lc5/r;->a(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc5/f;->e:Ljava/util/List;

    invoke-virtual {p3}, Lc5/q;->b()Lc5/g;

    move-result-object p2

    invoke-virtual {p2}, Lc5/g;->c()Lc5/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lc5/r;->a(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc5/f;->f:Ljava/util/List;

    invoke-virtual {p3}, Lc5/q;->b()Lc5/g;

    move-result-object p2

    invoke-virtual {p2}, Lc5/g;->d()Lc5/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lc5/r;->a(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc5/f;->g:Ljava/util/List;

    invoke-virtual {p3}, Lc5/q;->b()Lc5/g;

    move-result-object p2

    invoke-virtual {p2}, Lc5/g;->e()Lc5/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lc5/r;->a(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc5/f;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/WallpaperColors;ZLc5/q;)V
    .locals 2

    const-string v0, "wallpaperColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc5/f;->i:Lc5/f$a;

    sget-object v1, Lc5/q;->n:Lc5/q;

    if-eq p3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lc5/f$a;->c(Landroid/app/WallpaperColors;Z)I

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Lc5/f;-><init>(IZLc5/q;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lc5/f;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lc5/f;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lc5/f;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lc5/f;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lc5/f;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorScheme {\n  seed color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lc5/f;->i:Lc5/f$a;

    iget v2, p0, Lc5/f;->a:I

    invoke-static {v1, v2}, Lc5/f$a;->b(Lc5/f$a;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  style: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc5/f;->c:Lc5/q;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n  palettes: \n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc5/f;->d:Ljava/util/List;

    const-string v3, "PRIMARY"

    invoke-static {v1, v3, v2}, Lc5/f$a;->a(Lc5/f$a;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc5/f;->e:Ljava/util/List;

    const-string v4, "SECONDARY"

    invoke-static {v1, v4, v3}, Lc5/f$a;->a(Lc5/f$a;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc5/f;->f:Ljava/util/List;

    const-string v4, "TERTIARY"

    invoke-static {v1, v4, v3}, Lc5/f$a;->a(Lc5/f$a;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc5/f;->g:Ljava/util/List;

    const-string v4, "NEUTRAL"

    invoke-static {v1, v4, v3}, Lc5/f$a;->a(Lc5/f$a;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lc5/f;->h:Ljava/util/List;

    const-string v2, "NEUTRAL VARIANT"

    invoke-static {v1, v2, p0}, Lc5/f$a;->a(Lc5/f$a;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
