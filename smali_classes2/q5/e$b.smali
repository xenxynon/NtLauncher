.class public final Lq5/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq5/g$c<",
        "Lq5/e;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic g:Lq5/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq5/e$b;

    invoke-direct {v0}, Lq5/e$b;-><init>()V

    sput-object v0, Lq5/e$b;->g:Lq5/e$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
