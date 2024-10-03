.class public final Lq2/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq2/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq2/r;

    invoke-direct {v0}, Lq2/r;-><init>()V

    sput-object v0, Lq2/r;->a:Lq2/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "favorites_preview_nt"

    goto :goto_0

    :cond_0
    const-string p0, "favorites_tmp_nt"

    :goto_0
    return-object p0
.end method
