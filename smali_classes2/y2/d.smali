.class public final synthetic Ly2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final synthetic a:Ly2/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2/d;

    invoke-direct {v0}, Ly2/d;-><init>()V

    sput-object v0, Ly2/d;->a:Ly2/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, Ly2/c$e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
