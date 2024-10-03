.class final Ll4/b$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ll4/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ll4/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll4/b$a;

    invoke-direct {v0}, Ll4/b$a;-><init>()V

    sput-object v0, Ll4/b$a;->g:Ll4/b$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ll4/b;
    .locals 0

    new-instance p0, Ll4/b;

    invoke-direct {p0}, Ll4/b;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ll4/b$a;->a()Ll4/b;

    move-result-object p0

    return-object p0
.end method
