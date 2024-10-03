.class public final synthetic Lc/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic g:Lc/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/l;

    invoke-direct {v0}, Lc/l;-><init>()V

    sput-object v0, Lc/l;->g:Lc/l;

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

    check-cast p1, Lc/r$e;

    invoke-virtual {p1}, Lc/r$e;->f()V

    return-void
.end method
