.class public final synthetic Lq2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lq2/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lq2/q;

    invoke-direct {v0}, Lq2/q;-><init>()V

    sput-object v0, Lq2/q;->a:Lq2/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/nothing/launcher/NTLauncherApplication$a;->b(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
