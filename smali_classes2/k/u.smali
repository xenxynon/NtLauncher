.class public final synthetic Lk/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic g:Lk/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/u;

    invoke-direct {v0}, Lk/u;-><init>()V

    sput-object v0, Lk/u;->g:Lk/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/icons/IconCache;->e(Ljava/lang/Object;)V

    return-void
.end method
