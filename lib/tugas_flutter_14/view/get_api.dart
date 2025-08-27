import 'package:flutter/material.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_14/api/get_fake_store.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_14/model/fake_store_model.dart';
import 'package:ppkdjp_mpro_b3_2025/tugas_flutter_14/view/product_screen.dart';

class GetAPIScreen extends StatefulWidget {
  const GetAPIScreen({super.key});
  static const id = "/get_api_screen";

  @override
  State<GetAPIScreen> createState() => _GetAPIScreenState();
}

class _GetAPIScreenState extends State<GetAPIScreen> {
  late Future<List<Welcome>> _futureProducts;
  List<Welcome> _filteredProducts = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _futureProducts = getItem();
  }

  void _refreshData() {
    setState(() {
      _futureProducts = getItem();
      _searchController.clear();
    });
  }

  void _filterProducts(String query) {
    _futureProducts.then((products) {
      setState(() {
        _filteredProducts = products.where((product) {
          return product.title.toLowerCase().contains(query.toLowerCase()) ||
              product.category.toLowerCase().contains(query.toLowerCase());
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshData,
        tooltip: 'Perbarui Produk',
        child: const Icon(Icons.refresh),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Cari Produk...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onChanged: _filterProducts,
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Welcome>>(
              future: _futureProducts,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData) {
                  final products = _searchController.text.isEmpty
                      ? snapshot.data!
                      : _filteredProducts;

                  return RefreshIndicator(
                    onRefresh: () async {
                      _refreshData();
                    },
                    child: ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return _buildProductItem(product);
                      },
                    ),
                  );
                } else {
                  return const Center(child: Text('Tidak ada Produk'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem(Welcome product) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(product: product),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Image
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[100],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      product.image,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error);
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '\$ ${product.price}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            '${product.rating.rate}',
                            style: const TextStyle(fontSize: 12),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '* ${product.rating.count} reviewes',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
