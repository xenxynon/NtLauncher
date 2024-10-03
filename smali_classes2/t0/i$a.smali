.class final Lt0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lt0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt0/i;

    invoke-direct {v0}, Lt0/i;-><init>()V

    sput-object v0, Lt0/i$a;->a:Lt0/i;

    return-void
.end method

.method static synthetic a()Lt0/i;
    .locals 1

    sget-object v0, Lt0/i$a;->a:Lt0/i;

    return-object v0
.end method
