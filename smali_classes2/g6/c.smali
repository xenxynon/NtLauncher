.class final Lg6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/g;
.implements Lg6/b;


# static fields
.field public static final a:Lg6/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg6/c;

    invoke-direct {v0}, Lg6/c;-><init>()V

    sput-object v0, Lg6/c;->a:Lg6/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Lg6/g;
    .locals 0

    invoke-virtual {p0, p1}, Lg6/c;->b(I)Lg6/c;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Lg6/c;
    .locals 0

    sget-object p0, Lg6/c;->a:Lg6/c;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    sget-object p0, Lo5/u;->g:Lo5/u;

    return-object p0
.end method
