.class final Ll6/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq5/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ll6/q;

.field private static final h:Lq5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll6/q;

    invoke-direct {v0}, Ll6/q;-><init>()V

    sput-object v0, Ll6/q;->g:Ll6/q;

    sget-object v0, Lq5/h;->g:Lq5/h;

    sput-object v0, Ll6/q;->h:Lq5/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Lq5/g;
    .locals 0

    sget-object p0, Ll6/q;->h:Lq5/g;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
