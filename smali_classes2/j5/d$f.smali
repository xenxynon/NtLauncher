.class abstract Lj5/d$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lj5/d;


# direct methods
.method private constructor <init>(Lj5/d;)V
    .locals 0

    iput-object p1, p0, Lj5/d$f;->a:Lj5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lj5/d;Lj5/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lj5/d$f;-><init>(Lj5/d;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method
