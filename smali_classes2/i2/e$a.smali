.class public final Li2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/e;
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

    invoke-direct {p0}, Li2/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Li2/c$a;->b(Li2/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
