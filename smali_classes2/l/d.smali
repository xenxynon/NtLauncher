.class public final synthetic Ll/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic g:Ll/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ll/d;

    invoke-direct {v0}, Ll/d;-><init>()V

    sput-object v0, Ll/d;->g:Ll/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->c()V

    return-void
.end method
