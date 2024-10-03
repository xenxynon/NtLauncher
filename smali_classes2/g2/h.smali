.class public final synthetic Lg2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic g:Lg2/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg2/h;

    invoke-direct {v0}, Lg2/h;-><init>()V

    sput-object v0, Lg2/h;->g:Lg2/h;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lg2/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method
