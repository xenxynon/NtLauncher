.class public final Lc6/c$a;
.super Lc6/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc6/c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lc6/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 0

    invoke-static {}, Lc6/c;->a()Lc6/c;

    move-result-object p0

    invoke-virtual {p0}, Lc6/c;->b()I

    move-result p0

    return p0
.end method
