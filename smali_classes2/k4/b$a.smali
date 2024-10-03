.class final Lk4/b$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lk4/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk4/b$a;

    invoke-direct {v0}, Lk4/b$a;-><init>()V

    sput-object v0, Lk4/b$a;->g:Lk4/b$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 0

    invoke-static {}, Ly2/a;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NTF_VIBRATOR_THREE_INTENSITY"

    invoke-static {p0}, Lh5/a;->a(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lk4/b$a;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
